package resume;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDDocumentCatalog;
import org.apache.pdfbox.pdmodel.interactive.form.PDAcroForm;
import org.apache.pdfbox.pdmodel.interactive.form.PDField;

public class resumeFiller2 {

    private static PDDocument _pdfDocument;

    public static ByteArrayOutputStream create(String type, int id) throws SQLException, ClassNotFoundException {

        //System.out.println("Working Directory = " +
        //System.getProperty("user.dir"));
        String originalPdf = null;
        if (type.equals("Modern")) {
            originalPdf = "C:\\Users\\markm\\OneDrive\\Documents\\NetBeansProjects\\Resume-v2\\Resume v2\\web\\assets\\resumes\\modern.pdf";
        } else if (type.equals("Traditional")) {

        }

        //String targetPdf = "G:\\Desktop\\resume22.pdf";
        try {
            return populateAndCopy(originalPdf, type);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    private static ByteArrayOutputStream populateAndCopy(String originalPdf, String type) throws IOException, SQLException, ClassNotFoundException {

        ByteArrayOutputStream output = new ByteArrayOutputStream();
        _pdfDocument = PDDocument.load(new File(originalPdf));

        _pdfDocument.getNumberOfPages();

        if (type.equals("Modern")) {
            
            Statement stmt = null;
            String fname = null;
            String lname = null;
            String profession = null;
            String objective = null;
            String jobTitle1 = null;
            String jobEmployer1 = null;
            Date jobStart1 = null;
            Date jobEnd1 = null;
            String jobDescription1 = null;
            
            
            String query = "select * from createdResumes order by id desc limit 1";
            try {
                stmt = sqlconnect.getConnection().createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {
                    fname = rs.getString("fname");
                    lname = rs.getString("lname");
                    profession = rs.getString("major") + " | other data can go here";
                    objective = rs.getString("objective");
                    jobTitle1 = rs.getString("jobTitle1");
                    jobEmployer1 = rs.getString("jobEmployer1");
                    jobStart1 = rs.getDate("jobStart1");
                    jobEnd1 = rs.getDate("jobEnd1");
                    jobDescription1 = rs.getString("jobDescription1");
                }
            } catch (SQLException e) {
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }

            setField("Name", fname + " " + lname);
            setField("Profession", profession);
            setField("Objective", objective);
            setField("Experience", jobTitle1 + " \u2022 " + jobEmployer1 + " \u2022 " + jobStart1 + " - " + jobEnd1 + "\n" + jobDescription1);
            setField("Skills", "This is my skills! Aint it the neatest? I sure think so. I want to make sure multi-line works fine so i'm going to type a whole bunch of stuff here. ");
            setField("Education", "This is my education! Aint it the neatest? I sure think so. I want to make sure multi-line works fine so i'm going to type a whole bunch of stuff here. ");
            setField("Extra Section Header", "New Header");
            setField("Email", "mreddin@ilstu.edu");
            setField("Phone", "8474128415");
            setField("LinkedIn", "Mark Reddington");
            flatten();
            _pdfDocument.save(output);
            _pdfDocument.close();
            return output;

        } else if (type.equals("Traditional")) {

        } else {
            return null;
        }
        return null;
    }

    public static void setField(String name, String value) throws IOException {
        PDDocumentCatalog docCatalog = _pdfDocument.getDocumentCatalog();
        PDAcroForm acroForm = docCatalog.getAcroForm();
        PDField field = acroForm.getField(name);
        if (field != null) {
            field.setValue(value);
        } else {
            System.err.println("No field found with name:" + name);
        }
    }

    public static void flatten() throws IOException {
        PDDocumentCatalog docCatalog = _pdfDocument.getDocumentCatalog();
        PDAcroForm acroForm = docCatalog.getAcroForm();
        acroForm.flatten();
    }
}
