# ✈️ NextGen Airport Control System

A comprehensive **Airport Management System** built using Python (Tkinter GUI) and MySQL, designed to streamline flight schedules, passenger information, ticketing, and journeys. This project showcases end-to-end database design, GUI integration, SQL logic, and normalization principles aligned with DBMS best practices.

---

## 📌 Project Overview

The **NextGen Airport Control System (NACS)** aims to replicate the backend infrastructure of a real-world airport environment. The system supports:
- Viewing flight schedules and passenger data
- Running custom and predefined SQL queries
- Adding/deleting database entries via GUI
- Exporting data in Excel, CSV, and PDF formats
- Maintaining data consistency through a normalized schema

---

## 🧠 Features

- Interactive GUI using `Tkinter`
- Integration with MySQL database
- CRUD operations via GUI
- Predefined queries for:
  - Upcoming flights
  - VIP passengers
  - Flights to/from specific destinations
- Record filtering and search
- Export results in:
  - 📄 PDF (`fpdf`)
  - 📊 Excel (`openpyxl`)
  - 📑 CSV (`csv` module)
- Add/Delete records via GUI forms

---

## 🏗️ Database Design

**Entities:**
- `Passenger`
- `Journey`
- `Flight`
- `Ticket`
- `Schedule`

**Normalization:** The database schema is in **Third Normal Form (3NF)** to eliminate redundancy and ensure data integrity.

**ER Diagram:** Defined in project report and pitch deck (see `/docs` folder if added separately).

---

## ⚙️ Technologies Used

- **Frontend/GUI**: Python `tkinter`
- **Backend**: MySQL (Connector: `mysql.connector`)
- **Export Tools**: `fpdf`, `openpyxl`
- **Diagram Tools**: ERD Diagram tools for DB design

---

## 🚀 Getting Started

### Prerequisites

- Python 3.x
- MySQL server
- Install required packages:
```bash
pip install mysql-connector-python openpyxl fpdf
```

### Setup

1. Clone the repo:
```bash
git clone https://github.com/yourusername/NextGen-Airport-Control-System.git
```

2. Configure DB credentials in `airport_gui_final.py`:
```python
self.db_config = {
    'host': 'localhost',
    'database': 'airportmanagementsystem',
    'user': 'root',
    'password': 'yourpassword'
}
```

3. Run the application:
```bash
python airport_gui_final.py
```

---

## 🧾 Example SQL Queries

```sql
-- Show passenger names and travel class
SELECT passenger.First_Name AS "Passenger Name", ticket.class AS "Class"
FROM ticket
INNER JOIN passenger ON passenger.Ticket_PNR = ticket.ticket_PNR;

-- Count total passengers
SELECT COUNT(P_ID) AS "Number of Passengers" FROM passenger;

-- Flights going to New York
SELECT flight_no FROM flight
WHERE schedule_id = (
  SELECT schedule_id FROM schedule WHERE Arri_location = 'New York'
);
```

More queries can be found in the project report and embedded GUI.

---

## 👨‍💻 Contributors

- **Rohit Badgujar** (C264)
- **Vaibhav Gujrathi** (C229)
- **Muzammil Khatik** (C243)

---

## 📚 Learning & Reflection

- Learned to build real-world database systems
- Gained practical experience in SQL normalization, joins, and constraints
- Integrated GUI with backend DBMS using Python
- Addressed challenges like foreign key dependencies, data consistency, and UI design

---

## 🧩 Project Files

- `airport_gui_final.py`: Main application
- `DBMSProject.docx`: Detailed report including ERD, schema, normalization
- `PitchDeck.pptx`: Presentation overview of the system

---

## 📎 License

This project is for educational purposes only. Plagiarism is discouraged. Reuse with credits.
