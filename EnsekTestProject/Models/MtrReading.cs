using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace EnsekTestProject.Models
{
    public class MtrReading
    {

        public int MtrReadingId { get; set; }
        public int AccountId { get; set; }
        public string MeterReadingDateTime { get; set; }
        
      
        public int MeterReadValue { get; set; }
    }
}

