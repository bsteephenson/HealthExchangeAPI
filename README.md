#Health Exchange Data

An API for the Robert Wood Johnson health exchange data set built in Ruby on Rails

#Usage

/search/:state/:area returns a JSON list of plan ids and names

/plan/:id returns a JSON object of a plan's details

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

#Plan Fields

- State
- Issuer_Name
- Plan_ID_Standard_Component
- Plan_Marketing_Name
- Plan_Type
- Rating_Area
- Premium_Adult_Individual_Age_27
- Premium_Adult_Individual_Age_50
- Couple_plus_two_children_Age_30
- Individual_plus_two_children_Age_30
- Medical_Deductible_individual_in_network
- Drug_Deductible_individual_in_network
- Medical_Deductible_individual_out_of_network
- Drug_Deductible_individual_out_of_network
- Medical_Deductible_family_in_network
- Drug_Deductible_family_in_network
- Medical_Deductible_family_out_of_network
- Drug_Deductible_family_out_of_network
- Medical_Maximum_Out_Of_Pocket_individual_in_network
- Drug_Maximum_Out_of_Pocket_individual_in_network
- Medical_Maximum_Out_Of_Pocket_individual_out_of_network
- Drug_Maximum_Out_of_Pocket_individual_out_of_network
- Medical_Maximum_Out_of_Pocket_family_in_network
- Drug_Maximum_Out_of_Pocket_Family_in_network
- Medical_Maximum_Out_of_Pocket_family_out_of_network
- Drug_Maximum_Out_of_Pocket_Family_out_of_network
- Primary_Care_Physician_in_network
- Primary_Care_Physician_out_of_network
- Specialist_in_network
- Specialist_out_of_network
- Emergency_Room_in_network
- Emergency_Room_out_of_network
- Inpatient_Facility_in_network
- Inpatient_Facility_out_of_network
- Outpatient_Facility_in_network
- Outpatient_Facility_out_of_network
- Generic_Drugs_in_network
- Generic_Drugs_out_of_network
- Preferred_Brand_Drugs_in_network
- Preferred_Brand_Drugs_out_of_network
- Non_preferred_Brand_Drugs_in_network
- Non_preferred_Brand_Drugs_out_of_network
- Specialty_Drugs_in_network
- Specialty_Drugs_out_of_network