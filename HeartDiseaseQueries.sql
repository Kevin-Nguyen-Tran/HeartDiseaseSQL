// Tableau link to the below queries:
// https://public.tableau.com/views/HeartDiseaseDashboard1/PatientDashboard1?:language=en&:display_count=y&:origin=viz_share_link

// What is the average blood pressure of each age separated by gender?
SELECT patients.id, blood_pressure, age, sex FROM patients
JOIN vitals ON vitals.patient_id = patients.id;

// How many patients experience chest pain levels (0-4)? zero indicating no pain and 4 indicating extreme pain
SELECT chest_pain_level, COUNT(*) FROM patients
JOIN vitals ON vitals.patient_id = patients.id
GROUP BY chest_pain_level;

// Visualize the relationship between heart rate and blood pressure, separated by chest pain levels.
SELECT heart_rate, blood_pressure, chest_pain_level FROM patients
JOIN vitals ON vitals.patient_id = patients.id;

// Visualization of all 3 questions are found in the above link.
