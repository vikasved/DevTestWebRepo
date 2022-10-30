using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DevTestWebApp.Models
{
    public interface ICarDetails
    {
        List<Login> GetLoginDetails();
        List<CarDetail> GetCarDetails();
        CarDetail GetCarDetailsById(int Id);
        bool CarInfo(CarDetail carDetail);
        bool DeleteCarData(int Id);
    }
}
