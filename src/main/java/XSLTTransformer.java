import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class XSLTTransformer {

        public static void main(String[] args) throws FileNotFoundException, TransformerException {
            TransformerFactory tFactory = TransformerFactory.newInstance();
            Source xlsDoc= new StreamSource(new File("transform.xsl"));
            Source xmlDoc = new StreamSource(new File("XSLT_Trainee_Test_Problem.xml"));
            OutputStream htmlDoc=new FileOutputStream("book.html");
            Transformer transformer = tFactory.newTransformer(xlsDoc);
            transformer.transform(xmlDoc,new StreamResult(htmlDoc));

        }
    }
