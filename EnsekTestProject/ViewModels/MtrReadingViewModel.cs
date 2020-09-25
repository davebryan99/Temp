using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EnsekTestProject.ViewModels
{
    public class MtrReadingViewModel
    {
       
        public int AccountId { get; set; }
        public string MeterReadingDateTime { get; set; }
        public string MeterReadValue { get; set; }
    }
}
