class Defaults < ActiveRecord::Migration
  def up
    SkillsTerc.create(:name => "Ruby")
  	SkillsTerc.create(:name => "C++")
  	SkillsTerc.create(:name => "C#")

  	UskillsTerc.create(:id_users => "1", :id_skills => "1")
  	UskillsTerc.create(:id_users => "1", :id_skills => "2")
  	UskillsTerc.create(:id_users => "1", :id_skills => "3")
  	UskillsTerc.create(:id_users => "2", :id_skills => "2")
  end

  def down
  end
end