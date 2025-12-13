Step 01 — Dataset Description
Brazilian E-Commerce Public Dataset (Olist)
🇮🇷 فارسی

در این پروژه از Brazilian E-Commerce Public Dataset by Olist استفاده شده است.
این دیتاست شامل داده‌های واقعی یک پلتفرم فروش آنلاین در برزیل است و اطلاعاتی دربارهٔ سفارش‌ها، مشتریان، محصولات، پرداخت‌ها، فروشندگان و نظرات کاربران ارائه می‌دهد.

دلیل انتخاب این دیتاست:

ساختار چندجدولی (Relational)

مناسب برای تحلیل‌های واقعی فروش (Sales Analytics)

ایده‌آل برای تمرین Join، Aggregation و KPIها در SQL

بسیار مناسب برای نمایش توانایی تحلیل داده در GitHub

تمام داده‌ها به‌صورت فایل‌های CSV دریافت شده‌اند و در مراحل بعدی با استفاده از SQL Server Management Studio (SSMS) و فقط با دستورات SQL وارد پایگاه داده می‌شوند.

🇬🇧 English

This project uses the Brazilian E-Commerce Public Dataset by Olist.
The dataset contains real transactional data from an online marketplace in Brazil, including information about orders, customers, products, payments, sellers, and customer reviews.

Reasons for choosing this dataset:

Relational, multi-table structure

Suitable for real-world sales analytics

Ideal for practicing SQL joins, aggregations, and KPI calculations

Well-suited for demonstrating data analytics skills on GitHub

All data is provided as CSV files and will be imported into SQL Server using SQL Server Management Studio (SSMS) with pure SQL commands only.

🇩🇪 Deutsch

In diesem Projekt wird das Brazilian E-Commerce Public Dataset von Olist verwendet.
Der Datensatz enthält reale Transaktionsdaten eines brasilianischen Online-Marktplatzes, einschließlich Informationen zu Bestellungen, Kunden, Produkten, Zahlungen, Verkäufern und Kundenbewertungen.

Gründe für die Auswahl dieses Datensatzes:

Relationale Struktur mit mehreren Tabellen

Geeignet für praxisnahe Verkaufsanalysen

Ideal zum Üben von SQL-Joins, Aggregationen und KPI-Berechnungen

Sehr gut geeignet zur Präsentation analytischer Fähigkeiten auf GitHub

Alle Daten liegen im CSV-Format vor und werden in den nächsten Schritten mit SQL Server Management Studio (SSMS) ausschließlich über SQL-Befehle importiert.


## 📁 Files Included


olist_customers_dataset.csv
olist_orders_dataset.csv
olist_order_items_dataset.csv
olist_order_payments_dataset.csv
olist_order_reviews_dataset.csv
olist_products_dataset.csv
olist_sellers_dataset.csv
olist_geolocation_dataset.csv
product_category_name_translation.csv




Step 02 — Create Project Folder Structure (GitHub only)

این مرحله فقط برای مرتب‌سازی پروژه در GitHub است.
هنوز هیچ کدی اجرا نمی‌کنیم.

🇮🇷 فارسی

در این مرحله ساختار پوشه‌های پروژه در GitHub ایجاد می‌شود تا مراحل مختلف کار (دیتاست، ساخت دیتابیس، طراحی جدول‌ها و تحلیل‌ها) از هم جدا و شفاف باشند.

این کار باعث می‌شود:

پروژه حرفه‌ای‌تر دیده شود

هر مرحله به‌صورت مستقل قابل بررسی باشد

خوانایی پروژه برای دیگران (Recruiter / Reviewer) بالا برود

در این مرحله هیچ فایل SQL اجرا نمی‌شود و فقط پوشه‌ها ساخته می‌شوند.

🇬🇧 English

In this step, we create the project folder structure in GitHub to clearly separate each phase of the work (dataset, database setup, table design, analytics).

This helps to:

Keep the project clean and well-organized

Make each step easy to review

Improve readability for recruiters and reviewers

At this stage, no SQL code is executed. We only create folders.

🇩🇪 Deutsch

In diesem Schritt wird die Projektordnerstruktur in GitHub erstellt, um die einzelnen Arbeitsphasen (Datensatz, Datenbankaufbau, Tabellendesign, Analysen) klar zu trennen.

Das sorgt für:

Eine saubere und professionelle Projektstruktur

Bessere Nachvollziehbarkeit der Schritte

Höhere Lesbarkeit für Recruiter und Reviewer
Step 02 — Create Project Folder Structure (GitHub only)

این مرحله فقط برای مرتب‌سازی پروژه در GitHub است.
هنوز هیچ کدی اجرا نمی‌کنیم.

🇮🇷 فارسی

در این مرحله ساختار پوشه‌های پروژه در GitHub ایجاد می‌شود تا مراحل مختلف کار (دیتاست، ساخت دیتابیس، طراحی جدول‌ها و تحلیل‌ها) از هم جدا و شفاف باشند.

این کار باعث می‌شود:

پروژه حرفه‌ای‌تر دیده شود

هر مرحله به‌صورت مستقل قابل بررسی باشد

خوانایی پروژه برای دیگران (Recruiter / Reviewer) بالا برود

در این مرحله هیچ فایل SQL اجرا نمی‌شود و فقط پوشه‌ها ساخته می‌شوند.

🇬🇧 English

In this step, we create the project folder structure in GitHub to clearly separate each phase of the work (dataset, database setup, table design, analytics).

This helps to:

Keep the project clean and well-organized

Make each step easy to review

Improve readability for recruiters and reviewers

At this stage, no SQL code is executed. We only create folders.

🇩🇪 Deutsch

In diesem Schritt wird die Projektordnerstruktur in GitHub erstellt, um die einzelnen Arbeitsphasen (Datensatz, Datenbankaufbau, Tabellendesign, Analysen) klar zu trennen.

Das sorgt für:

Eine saubere und professionelle Projektstruktur

Bessere Nachvollziehbarkeit der Schritte

Höhere Lesbarkeit für Recruiter und Reviewer

Folder Structure to Create:
01_Dataset
02_Database_Setup
03_Table_Design
04_Data_Import
05_Analytics
docs

