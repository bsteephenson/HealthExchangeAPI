# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Plan.delete_all

csv_file_path = 'db/rwj_data.csv'
counter = 0
CSV.foreach(csv_file_path) do |row|
  Plan.create!({

    :State => row[0],
    :Issuer_Name => row[1],
    :Plan_ID_Standard_Component => row[2],
    :Plan_Marketing_Name => row[3],
    :Plan_Type => row[4],
    :Rating_Area => row[5],
    :Premium_Adult_Individual_Age_27 => row[6],
    :Premium_Adult_Individual_Age_50 => row[7],
    :Couple_plus_two_children_Age_30 => row[8],
    :Individual_plus_two_children_Age_30 => row[9],
    :Medical_Deductible_individual_in_network => row[10],
    :Drug_Deductible_individual_in_network => row[11],
    :Medical_Deductible_individual_out_of_network => row[12],
    :Drug_Deductible_individual_out_of_network => row[13],
    :Medical_Deductible_family_in_network => row[14],
    :Drug_Deductible_family_in_network => row[15],
    :Medical_Deductible_family_out_of_network => row[16],
    :Drug_Deductible_family_out_of_network => row[17],
    :Medical_Maximum_Out_Of_Pocket_individual_in_network => row[18],
    :Drug_Maximum_Out_of_Pocket_individual_in_network => row[19],
    :Medical_Maximum_Out_Of_Pocket_individual_out_of_network => row[20],
    :Drug_Maximum_Out_of_Pocket_individual_out_of_network => row[21],
    :Medical_Maximum_Out_of_Pocket_family_in_network => row[22],
    :Drug_Maximum_Out_of_Pocket_Family_in_network => row[23],
    :Medical_Maximum_Out_of_Pocket_family_out_of_network => row[24],
    :Drug_Maximum_Out_of_Pocket_Family_out_of_network => row[25],
    :Primary_Care_Physician_in_network => row[26],
    :Primary_Care_Physician_out_of_network => row[27],
    :Specialist_in_network => row[28],
    :Specialist_out_of_network => row[29],
    :Emergency_Room_in_network => row[30],
    :Emergency_Room_out_of_network => row[31],
    :Inpatient_Facility_in_network => row[32],
    :Inpatient_Facility_out_of_network => row[33],
    :Outpatient_Facility_in_network => row[34],
    :Outpatient_Facility_out_of_network => row[35],
    :Generic_Drugs_in_network => row[36],
    :Generic_Drugs_out_of_network => row[37],
    :Preferred_Brand_Drugs_in_network => row[38],
    :Preferred_Brand_Drugs_out_of_network => row[39],
    :Non_preferred_Brand_Drugs_in_network => row[40],
    :Non_preferred_Brand_Drugs_out_of_network => row[41],
    :Specialty_Drugs_in_network => row[42],
    :Specialty_Drugs_out_of_network => row[43]

  })
  counter = counter + 1
  puts counter
end