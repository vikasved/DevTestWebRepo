using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DevTestWebApp.Models
{
    public class Car : ICarDetails
    {
        private readonly DevTestDBContext context;
        public Car(DevTestDBContext _context) {
            context = _context;
        }
        public List<Login> GetLoginDetails()
        {
            return context.Logins.ToList();
        }
        public List<CarDetail> GetCarDetails()
        {
            return context.CarDetails.ToList();
        }
        public bool CarInfo(CarDetail carDetail)
        {
           var a= context.CarDetails.Add(carDetail);
            context.SaveChanges();
            return true;
        }
      public  bool DeleteCarData(int Id)
        {
            bool result = false;
            var car = context.CarDetails.FirstOrDefault(x=>x.Id==Id);
            context.CarDetails.Remove(car);
            context.SaveChanges();
            result = true;
            return result;
        }
      public CarDetail GetCarDetailsById(int Id)
        {
            return context.CarDetails.FirstOrDefault(x => x.Id == Id);

        }

    }
}
