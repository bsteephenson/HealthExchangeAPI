class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :State
      t.string :Issuer_Name
      t.string :Plan_ID_Standard_Component
      t.string :Plan_Marketing_Name
      t.string :Plan_Type
      t.string :Rating_Area
      t.string :Premium_Adult_Individual_Age_27
      t.string :Premium_Adult_Individual_Age_50
      t.string :Couple_plus_two_children_Age_30
      t.string :Individual_plus_two_children_Age_30
      t.string :Medical_Deductible_individual_in_network
      t.string :Drug_Deductible_individual_in_network
      t.string :Medical_Deductible_individual_out_of_network
      t.string :Drug_Deductible_individual_out_of_network
      t.string :Medical_Deductible_family_in_network
      t.string :Drug_Deductible_family_in_network
      t.string :Medical_Deductible_family_out_of_network
      t.string :Drug_Deductible_family_out_of_network
      t.string :Medical_Maximum_Out_Of_Pocket_individual_in_network
      t.string :Drug_Maximum_Out_of_Pocket_individual_in_network
      t.string :Medical_Maximum_Out_Of_Pocket_individual_out_of_network
      t.string :Drug_Maximum_Out_of_Pocket_individual_out_of_network
      t.string :Medical_Maximum_Out_of_Pocket_family_in_network
      t.string :Drug_Maximum_Out_of_Pocket_Family_in_network
      t.string :Medical_Maximum_Out_of_Pocket_family_out_of_network
      t.string :Drug_Maximum_Out_of_Pocket_Family_out_of_network
      t.string :Primary_Care_Physician_in_network
      t.string :Primary_Care_Physician_out_of_network
      t.string :Specialist_in_network
      t.string :Specialist_out_of_network
      t.string :Emergency_Room_in_network
      t.string :Emergency_Room_out_of_network
      t.string :Inpatient_Facility_in_network
      t.string :Inpatient_Facility_out_of_network
      t.string :Outpatient_Facility_in_network
      t.string :Outpatient_Facility_out_of_network
      t.string :Generic_Drugs_in_network
      t.string :Generic_Drugs_out_of_network
      t.string :Preferred_Brand_Drugs_in_network
      t.string :Preferred_Brand_Drugs_out_of_network
      t.string :Non_preferred_Brand_Drugs_in_network
      t.string :Non_preferred_Brand_Drugs_out_of_network
      t.string :Specialty_Drugs_in_network
      t.string :Specialty_Drugs_out_of_network

      t.timestamps
    end
  end
end
