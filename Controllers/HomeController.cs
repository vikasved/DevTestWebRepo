using DevTestWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace DevTestWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ICarDetails context;
        public HomeController(ILogger<HomeController> logger, ICarDetails _context)
        {
            _logger = logger;
            context = _context;
        }

        public IActionResult Index()
        {
            var data = context.GetCarDetails();
            return View(data);
        }

        public JsonResult Login(string _email, string _pass)
        {
            var result = false;
            var data = context.GetLoginDetails();
            var r = data.Where(x => x.Email == _email && x.Password == _pass);
            if(r.Count() == 1)
            {
                result = true;
            }
            return Json(result);
        }

        public IActionResult CarInfo()
        {            
            return View();
        }
        public JsonResult CarInfoSave(string _brand, string _model, string _carname, float _price, string _newcar)
        {
            var result = false;
            var count = context.GetCarDetails().Count();

            CarDetail carDetail = new CarDetail
            {
              Id=count+1,
                Brand = _brand,
                Model = _model,
                Carname = _carname,
                Price = _price,
                New = _newcar
            };
           result= context.CarInfo(carDetail);
            return Json(result);
        }
        public IActionResult ShowCarDetails()
        {
            var model = context.GetCarDetails();
            return View(model);
        }

        public IActionResult Edit(int Id)
        {
            var result = context.GetCarDetailsById(Id);
            return View(result);
        }

        //public IActionResult EditInfo()
        //{
        //    return View();
        //}
        public bool Delete(int Id)
        {
            var result = context.DeleteCarData(Id);
            return result;
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
