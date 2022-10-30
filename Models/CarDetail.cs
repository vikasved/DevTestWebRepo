using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace DevTestWebApp.Models
{
    public partial class CarDetail
    {
        [Key]
        public int Id { get; set; }

        public string Brand { get; set; }
        public string Model { get; set; }
        public string Carname { get; set; }
        public double Price { get; set; }
        public string New { get; set; }
    }
}
