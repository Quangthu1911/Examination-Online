package BEAN;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import BEAN.Question;
import DAO.ExamDAO;
import DAO.QuestionDAO;

public class ReadFileExcel {

	 public static List<Question> readfile(String filename) throws IOException {
	       // Đọc một file XSL.
	       FileInputStream inputStream = new FileInputStream(new File("C:/demo/"+filename));
	  
	       // Đối tượng workbook cho file XSL.
	       HSSFWorkbook workbook = new HSSFWorkbook(inputStream);
	 
	  
	       // Lấy ra sheet đầu tiên từ workbook
	       HSSFSheet sheet = workbook.getSheetAt(0);
	 
	  
	       // Lấy ra Iterator cho tất cả các dòng của sheet hiện tại.
	       Iterator<Row> rowIterator = sheet.iterator();

	       List<Question> lisQ=new ArrayList<>();
	       String idExam=String.valueOf(ExamDAO.checkIDExamMax()+1);
	       int temp=QuestionDAO.checkIDQuestionMax()+1;
	       while (rowIterator.hasNext()) {
	           Row row = rowIterator.next();
	     
	           // Lấy Iterator cho tất cả các cell của dòng hiện tại.
	           Iterator<Cell> cellIterator = row.cellIterator();
	           int i=-1;
	           temp++;
	           Question question=new Question();
	           while (cellIterator.hasNext()) {
	               Cell cell = cellIterator.next();
	               i++;
	               
	               // Đổi thành getCellType() nếu sử dụng POI 4.x
	               CellType cellType = cell.getCellTypeEnum();
	 
	               switch (cellType) {
	               case NUMERIC:
	            	   if(i==8)
	            	   {
	            		   question.setType((int) cell.getNumericCellValue());
	            	   }
	                   break;
	               case STRING:
	            	   if(i==0)
	            	   {
	            		   question.setContentQuestion(cell.getStringCellValue());
	            	   }
	            	   else if(i==1)
	            	   {
	            		   question.setAnswerA(cell.getStringCellValue());
	            	   }
	            	   else if(i==2)
	            	   {
	            		   question.setAnswerB(cell.getStringCellValue());
	            	   }
	            	   else if(i==3)
	            	   {
	            		   question.setAnswerC(cell.getStringCellValue());
	            	   }
	            	   else if(i==4)
	            	   {
	            		   question.setAnswerD(cell.getStringCellValue());
	            	   }
	            	   else if(i==5)
	            	   {
	            		   question.setAnswerE(cell.getStringCellValue());
	            	   }
	            	   else if(i==6)
	            	   {
	            		   question.setAnswerF(cell.getStringCellValue());
	            	   }
	            	   else if(i==7)
	            	   {
	            		   question.setAnswerTrue(cell.getStringCellValue());
	            	   }
	                   break;
	               }
	 
	           }
	           lisQ.add(question);
	           
	       }
	       return lisQ;
	   }
}
