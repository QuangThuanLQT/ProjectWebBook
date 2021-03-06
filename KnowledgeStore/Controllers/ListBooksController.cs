﻿using Model.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using Model.ViewModel;
using KnowledgeStore.Common;
using Common;

namespace KnowledgeStore.Controllers
{
    public class ListBooksController : Controller
    {
        KnowledgeStoreEntities db = new KnowledgeStoreEntities();
        private const string CartSession = "CartSession";
        // GET: ListBooks
        public ActionResult Index(string id, int? page, string theLoai,string SearchString)
        {
            ViewBag.TypeID = id;
            var listSach = db.Saches.OrderByDescending(m => m.LichSuNangTins.Max(n => n.NgayNang)).ToList();
            if (id != null)
            {
                if (id == "SachGiamGia")
                {
                    listSach = db.Saches.OrderByDescending(m => (m.GiaKhuyenMai / m.GiaTien)).Where(m => m.TrangThai == true).ToList();
                }
                else if (id == "SachMoiPhatHanh")
                {
                    listSach = db.Saches.OrderByDescending(m => m.NgayXuatBan).Where(m => m.TrangThai == true).ToList();
                }
                else if (id == "SachHay")
                {
                    listSach = db.Saches.OrderByDescending(m => m.DanhGiaCuaCustomers.Average(n=>n.SoSao)).Where(m => m.TrangThai == true).ToList();
                }
            }
            if (theLoai != null)
            {
                listSach = db.Saches.Where(m => m.TheLoai.TenTheLoai == theLoai & m.TrangThai == true).ToList();
            }
            if (!String.IsNullOrEmpty(SearchString))
            {
                ViewBag.Search = SearchString;
                listSach = listSach.Where(m => m.TenSach.ToLower().Contains(SearchString.ToLower())
                                         || m.NhaXuatBan.TenNXB.ToLower().Contains(SearchString.ToLower())).ToList();
            }
            ViewBag.SearchString = SearchString;
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            return View(listSach.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult BookDetail(int id)
        {
            var book = db.Saches.Find(id);
            ViewBag.BookId = id;

            var cart = Session[CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
                if (list.Exists(x => x.Sach.SachID == id))
                {

                    foreach (var item in list)
                    {
                        ViewBag.QuantityMax = book.SoLuong - item.Quantity;
                    }
                }
                else
                {
                    ViewBag.QuantityMax = book.SoLuong;
                }
            }
            else
            {
                ViewBag.QuantityMax = book.SoLuong;
            }

            var product = db.Saches.Find(id);
            ViewBag.RelatedProduct = db.Saches.Where(p => p.TheLoaiID == product.TheLoaiID).ToList();


            var sumStar = db.DanhGiaCuaCustomers.Where(p => p.SachID == product.SachID).ToList();
            if (sumStar.Count == 0)
            {
                ViewBag.sumStar = 0;
            }
            else { ViewBag.sumStar = db.DanhGiaCuaCustomers.Where(p => p.SachID == product.SachID).Sum(p => p.SoSao); }

            ViewBag.countStar = db.DanhGiaCuaCustomers.Where(p => p.SachID == product.SachID).Count();

            ViewBag.comment = db.DanhGiaCuaCustomers.Where(p => p.SachID == id).OrderByDescending(p => p.DanhGiaCusID).ToList();


            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            ViewBag.muahang = 0;
            if (session == null)
            {
                ViewBag.ktdangnhap = 0;
                ViewBag.muahang = 0;
            }
            else
            {
                ViewBag.ktdangnhap = 1;
            }


            if (session != null)
            {
                var muahang = from a in db.ChiTietDonHangs
                              join b in db.DonHangs
                              on a.DonHangID equals b.DonHangID
                              where a.SachID == id
                              select b.CustomerID;
                if(muahang.Count() != 0)
                {
                    if (db.Customers.Find(muahang.Min()).Email.ToString() == session.Email.ToString())
                    {
                        ViewBag.muahang = 1;

                        //kiem tra danh gia hay chua
                        var cm = from a in db.Customers
                                 join b in db.DonHangs
                                 on a.CustomerID equals b.CustomerID
                                 where a.Email == session.Email
                                 select b.DonHangID;
                        var ctdonhang = db.ChiTietDonHangs.Where(p => p.SachID == id).First().ChiTietDonHangID;
                        if (db.ChiTietDonHangs.Find(ctdonhang).TrangThaiDanhGia == true)
                        {
                            ViewBag.DaNhanXet = 1;
                        }
                    }
                }
                

            }


            return View(book);

        }

        [HttpPost]
        public ActionResult Rating(int id, int rating, string title, string review)
        {
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            var muahang = from a in db.Customers
                          join b in db.DonHangs
                          on a.CustomerID equals b.CustomerID
                          where a.Email == session.Email
                          select b.DonHangID;
            //var ctdonhang = db.ChiTietDonHangs.Where(p => p.DonHangID == muahang.Min()).First().ChiTietDonHangID;
            var ctdonhang = db.ChiTietDonHangs.Where(p => p.SachID == id).First().ChiTietDonHangID;

            var comment = new DanhGiaCuaCustomer();

            comment.CustomerID = db.Customers.Where(p => p.Email == session.Email).First().CustomerID;
            comment.SachID = id;
            comment.SoSao = rating;
            comment.TieuDe = title;
            comment.NoiDung = review;
            comment.ChiTietDonHang = db.ChiTietDonHangs.Find(ctdonhang);
            db.DanhGiaCuaCustomers.Add(comment);
            db.ChiTietDonHangs.Find(ctdonhang).TrangThaiDanhGia = true;

            db.SaveChanges();

            if ((db.DanhGiaCuaCustomers.Where(m => m.SachID == comment.SachID).Average(m => m.SoSao) < 3) && (db.DanhGiaCuaCustomers.Where(m => m.SachID == comment.SachID).Count() % 3 == 0))
            {
                MailHelper.SendMailCanhBao(db.Customers.Find(id).Email, "Thư cảnh báo hệ thống", comment.Customer.HoTen, System.DateTime.Now.ToString("mm/DD/yyyy"));
            }

            return RedirectToAction("/BookDetail/" + id);
        }




    }
}