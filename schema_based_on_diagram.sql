 CREATE TABLE medical_histories(id int generated by default as identity primary key, admitted_at date,patient_id int, status varchar(50));
 CREATE TABLE treatments(id int generated by default as identity primary key, type varchar(100), name varchar(50));
 CREATE TABLE invoice_items(id int generated by default as identity primary key,unit_price DECIMAL(5,2),quantity int, total_price DECIMAL(5,2), invoice_id int, treatment_id int);
 CREATE TABLE invoices(id int generated by default as identity primary key, total_amount DECIMAL(5,2), generated_at date, payed_at date, medical_history_id int);
 CREATE TABLE patients(id int generated by default as identity primary key, name varchar(100), date_of_birth date);
