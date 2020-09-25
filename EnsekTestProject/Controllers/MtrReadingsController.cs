using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using EnsekTestProject.Data;
using EnsekTestProject.Models;

namespace EnsekTestProject.Controllers
{
    public class MtrReadingsController : Controller
    {
        private readonly EnsekTestProjectContext _context;

        public MtrReadingsController(EnsekTestProjectContext context)
        {
            _context = context;
        }

        // GET: MtrReadings
        public async Task<IActionResult> Index()
        {
            return View(await _context.MtrReadings.ToListAsync());
        }

        // GET: MtrReadings/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mtrReading = await _context.MtrReadings
                .FirstOrDefaultAsync(m => m.MtrReadingId == id);
            if (mtrReading == null)
            {
                return NotFound();
            }

            return View(mtrReading);
        }

        // GET: MtrReadings/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: MtrReadings/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("MtrReadingId,AccountId,MeterReadingDateTime,MeterReadValue")] MtrReading mtrReading)
        {
            if (ModelState.IsValid)
            {
                _context.Add(mtrReading);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(mtrReading);
        }

        // GET: MtrReadings/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mtrReading = await _context.MtrReadings.FindAsync(id);
            if (mtrReading == null)
            {
                return NotFound();
            }
            return View(mtrReading);
        }

        // POST: MtrReadings/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("MtrReadingId,AccountId,MeterReadingDateTime,MeterReadValue")] MtrReading mtrReading)
        {
            if (id != mtrReading.MtrReadingId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(mtrReading);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MtrReadingExists(mtrReading.MtrReadingId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(mtrReading);
        }

        // GET: MtrReadings/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mtrReading = await _context.MtrReadings
                .FirstOrDefaultAsync(m => m.MtrReadingId == id);
            if (mtrReading == null)
            {
                return NotFound();
            }

            return View(mtrReading);
        }

        // POST: MtrReadings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var mtrReading = await _context.MtrReadings.FindAsync(id);
            _context.MtrReadings.Remove(mtrReading);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MtrReadingExists(int id)
        {
            return _context.MtrReadings.Any(e => e.MtrReadingId == id);
        }
    }
}
