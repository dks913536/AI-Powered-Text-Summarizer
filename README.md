# AI-Powered Text Summarizer

This is a **Spring Boot** application that leverages **Spring AI** + **OpenAI** (via HuggingFace API key) to automatically summarize long text into short, simple, and meaningful content.  

---

## ✨ Features
- ✅ Summarize any text using AI (OpenAI GPT models)  
- ✅ Store all requests & responses in **MySQL database**  
- ✅ View summary history in a clean, interactive table  
- ✅ User-friendly interface using **JSP + Bootstrap**  

---

## 🛠️ How to Use
1. Go to **Home** and paste your text in the input box.  
2. Click **Summarize** to generate the AI summary.  
3. View the result instantly on the screen.  
4. Check **History** to see all past summaries.  

---

## 🚀 Tech Stack
- **Backend:** Spring Boot, Spring AI  
- **AI Service:** OpenAI GPT models (via HuggingFace API key)  
- **Frontend:** JSP + JSTL + Bootstrap 5  
- **Database:** MySQL  

---

## 📂 Project Structure
ai-powered-text-summarizer/
┣ src/main/java/com/example/aiapp
┃ ┣ controller/    # Controllers (SummaryController)
┃ ┣ entity/        # Entities (SummaryLog)
┃ ┣ model/         # DTOs/Models
┃ ┣ repository/    # JPA Repositories
┃ ┣ service/       # Service Interfaces + Implementations
┃ ┗ AiAppApplication.java
┣ src/main/webapp/WEB-INF/views/   # JSP views (index, result, history, about, header)
┣ src/main/resources/              # Config + application.properties
┣ src/test/java/                   # Unit tests
┣ pom.xml
┣ README.md
┗ .gitignore

🔗  Configure the database
Create a MySQL database (e.g., aidb)

Update application.properties: 
spring.datasource.url=jdbc:mysql://localhost:3306/aidb
spring.datasource.username=YOUR_DB_USERNAME 
spring.datasource.password=YOUR_DB_PASSWORD

# Hugging Face AI Config 
huggingface.api.key=Hugging_AI_KEY
huggingface.api.url=https://api-inference.huggingface.co/models/sshleifer/distilbart-cnn-12-6

🚀 Build & Run Then visit: http://localhost:8080

🖥️ Screenshots Home Page
<img width="1915" height="862" alt="image" src="https://github.com/user-attachments/assets/8bda47c6-66bc-4259-aa52-9575652f58f6" />

📸 Screenshots Result Page
<img width="1918" height="867" alt="image" src="https://github.com/user-attachments/assets/f07c7d39-8c16-4ca9-a7e2-2eaf842ddfa8" />

📸 Screenshots History Page
<img width="1918" height="862" alt="image" src="https://github.com/user-attachments/assets/2d6e0ed6-bcc2-4aa5-8ac9-2b0ab4a15da9" />

📸 Screenshots About Page
<img width="1903" height="862" alt="image" src="https://github.com/user-attachments/assets/d49e1c02-8564-4b7b-8fc7-ecf159254a86" />

👨‍💻 Author Deepak Kumar Singh GitHub: @dks913536
