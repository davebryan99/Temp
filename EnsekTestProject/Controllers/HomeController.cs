using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using EnsekTestProject.Models;
using EnsekTestProject.Data;
using CsvHelper;
using EnsekTestProject.Mappers;
using System.IO;
using System.Text;


namespace EnsekTestProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly EnsekTestProjectContext _context;


        public HomeController(EnsekTestProjectContext context)
        {
            _context = context;

        }

        public ActionResult Index(string Filename, string fileAlreadyProcessed)
        {
          
           

            if (!string.IsNullOrEmpty(Filename))
            {
                CheckIfProcessed(Filename, fileAlreadyProcessed);
                ProcessFile(Filename);
                Console.WriteLine("Processing Complete");
                ViewBag.Message = "Processing Complete";
                return View();
            }
            else
            {
                Console.WriteLine("Please enter file name to process");
                return View();
            }
           
        }

        public ActionResult ProcessFile(string Filename)
        {
            Console.WriteLine("**** Read in the CSV file *****");

            var path = @"C:\" + Filename;

    
                using (var reader = new StreamReader(path, Encoding.Default))
                using (var csv = new CsvReader(reader, System.Globalization.CultureInfo.CreateSpecificCulture("en-UK")))
                {
                    csv.Configuration.RegisterClassMap<MeterMap>();
                    var records = csv.GetRecords<MtrReading>().ToList();

                    foreach (var reading in records)
                    {
                     
                            Console.WriteLine("Processing " + reading.AccountId);
                            //MtrReadingValidityCheck(reading.AccountId);
                            var meterReadingToAdd = new MtrReading()
                            {
                                AccountId = reading.AccountId,
                                MeterReadingDateTime = reading.MeterReadingDateTime,
                                MeterReadValue = reading.MeterReadValue
                            };


                            _context.MtrReadings.Add(meterReadingToAdd);
                            // _context.MtrReading.Add(meterReadingToAdd);

                            _context.SaveChanges();

                    }

                 
                        var fileToAdd = new ProcessedFiles()
                        {
                            ProcessedFileName = Filename

                        };

                         _context.ProcessedFiles.Add(fileToAdd);
                         _context.SaveChanges();


                }


            return View();
        }


        public ActionResult CheckIfProcessed(string Filename, string fileAlreadyProcessed)
        {
            // not finished
            string ifilename = Filename.ToString();
            if (String.IsNullOrEmpty(ifilename))
            {
                Console.WriteLine("No Filename entered. Hit any key to exit");
               return RedirectToAction("Index", "Home");
            }

            // still to do 
            // add code to not process if already done

            // report number of successful and failed readings
           

               return RedirectToAction("Index", "Home");
        }

        // This is not done yet!

        //public ActionResult MtrReadingValidityCheck(int id)
        //{
        //    var isValid =  _context.Accounts.FindAsync(id);
           
        //    return RedirectToAction("Index", "Home");
        //}






        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

    }
}
