FROM jupyter/base-notebook

COPY requirements.txt ./requirements.txt
COPY COVID19_vaccination_doses_agegroups.csv ./COVID19_vaccination_doses_agegroups.csv
COPY timeline-bbg.csv ./timeline-bbg.csv
COPY timeline-eimpfpass.csv ./timeline-eimpfpass.csv
COPY CovidFaelle_Altersgruppe.csv ./CovidFaelle_Altersgruppe.csv
COPY COVID19_vaccination_municipalities_v202210.csv ./COVID19_vaccination_municipalities_v202210.csv
COPY impfungen-gemeinden.csv ./impfungen-gemeinden.csv

COPY SC_Übung_2.ipynb ./SC_Übung_2.ipynb

ENV JUPYTER_ENABLE_LAB=yes

RUN pip install -r requirements.txt