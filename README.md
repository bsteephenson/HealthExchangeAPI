#Health Exchange Data

#Steps to Create

0) Prepare the data

- Download the Robert Wood Johnson Foundation Healh Exchange data set.
- Remove the first row
- Convert to a CSV
- Remove or replace any non ASCI characters such as accented letters
- Place in db/ and rename to rwj_data.csv

1) Create the application

```
rails new healthexchange
```

2) Create the model

```
rails generate model Plan State:string Issuer_Name:string Plan_ID_Standard_Component:string Plan_Marketing_Name:string Plan_Type:string Rating_Area:string Premium_Adult_Individual_Age_27:string Premium_Adult_Individual_Age_50:string Couple_plus_two_children_Age_30:string Individual_plus_two_children_Age_30:string Medical_Deductible_individual_in_network:string Drug_Deductible_individual_in_network:string Medical_Deductible_individual_out_of_network:string Drug_Deductible_individual_out_of_network:string Medical_Deductible_family_in_network:string Drug_Deductible_family_in_network:string Medical_Deductible_family_out_of_network:string Drug_Deductible_family_out_of_network:string Medical_Maximum_Out_Of_Pocket_individual_in_network:string Drug_Maximum_Out_of_Pocket_individual_in_network:string Medical_Maximum_Out_Of_Pocket_individual_out_of_network:string Drug_Maximum_Out_of_Pocket_individual_out_of_network:string Medical_Maximum_Out_of_Pocket_family_in_network:string Drug_Maximum_Out_of_Pocket_Family_in_network:string Medical_Maximum_Out_of_Pocket_family_out_of_network:string Drug_Maximum_Out_of_Pocket_Family_out_of_network:string Primary_Care_Physician_in_network:string Primary_Care_Physician_out_of_network:string Specialist_in_network:string Specialist_out_of_network:string Emergency_Room_in_network:string Emergency_Room_out_of_network:string Inpatient_Facility_in_network:string Inpatient_Facility_out_of_network:string Outpatient_Facility_in_network:string Outpatient_Facility_out_of_network:string Generic_Drugs_in_network:string Generic_Drugs_out_of_network:string Preferred_Brand_Drugs_in_network:string Preferred_Brand_Drugs_out_of_network:string Non_preferred_Brand_Drugs_in_network:string Non_preferred_Brand_Drugs_out_of_network:string Specialty_Drugs_in_network:string Specialty_Drugs_out_of_network:string
```

3) Run the database migration

```
rake db:migrate
```

4) Seed the database with the Robert Wood Johnson Foundation data

```
rake db:seed
```

This step may take a while as there are over seven thousand rows in the data set

5) Create the plans controller

```
rails generate controller Plan --skip-helper --skip-assets
```

6) Edit app/controllers/plans_controller.rb and config/routes.rb)

7) Run on localhost:3000

```
rails server
```