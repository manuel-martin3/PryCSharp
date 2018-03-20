/*
En el evento Click en el codebehind puedes recoger el archivo enviado por el FileUpload. 
Simplemente prueba a poner el código del método UploadFile en el evento click y veras que 
todo funciona igual y tienes acceso al FileName.

Adicionalmente puedes comprobar si el archivo se ha subido con esta instrucción
*/
if(FileUploadControl.HasFile)
{
    try
    {
        if(FileUploadControl.PostedFile.ContentType == "image/jpeg")
        {
            if(FileUploadControl.PostedFile.ContentLength < 102400)
            {
                string filename = Path.GetFileName(FileUploadControl.FileName);
                FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
                StatusLabel.Text = "Upload status: File uploaded!";
            }
            else
                StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
        }
        else
            StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
    }
    catch(Exception ex)
    {
        StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
    }
}