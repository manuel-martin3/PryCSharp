
public class Testimonials
{
    public int Id { get; set; }
    public string Testimonial { get; set; }
    public string ImagePath { get; set; }
    public string ImageDisplayName { get; set; }
}

/*

*/

[HttpPost]
public ActionResult Create(TestimonialVM model)
{
    // ModelState.IsValid check omitted
    Testimonials testimonials = new Testimonials();
    // map view model properties to the data model
    ....
    if (model.Image != null && model.Image.ContentLength > 0)
    {
        string displayName = model.Image.FileName;
        string fileExtension = Path.GetExtension(displayName);
        string fileName = string.Format("{0}.{1}", Guid.NewGuid(), fileExtension)
        string path = Path.Combine(Server.MapPath("~/Images/"), fileName)
        model.Image.SaveAs(path);
        // Update data model
        testimonials.ImagePath = path;
        testimonials.ImageDisplayName = displayName;
    }
    TestimonialsContext testContext = new TestimonialsContext();
    testContext.testimonialContext.Add(testimonials);
    testContext.SaveChanges();
    return RedirectToAction("Index");
}