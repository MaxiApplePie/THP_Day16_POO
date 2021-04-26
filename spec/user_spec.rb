require_relative "../lib/user"

describe "Initialisation du user" do
  julie = User.new("julie@outlook.fr", 32)
  it "Valeur de debut" do
    expect(julie.read_age).to eq(32)
    expect(julie.read_email).to eq("julie@outlook.fr")
  end
  it "Valeurs modifiées" do
    julie.update_age(35)
    expect(julie.read_age).to eq(35)
    julie.update_email("julie@outlook.com")
    expect(julie.read_email).to eq ("julie@outlook.com")
  end
end

describe "Recherche du mail" do
  julie = User.new("julie@outlook.fr", 32)
  jean = User.new("jean@outlook.fr", 62)
  michel = User.new("michel@yahoo.fr", 65)
  corinne = User.new("corinne@gmail.com", 47)
  it "Mail ok !" do
    expect(User.find_by_email("michel@yahoo.fr")).to eq(michel.to_s)
    expect(User.find_by_email("julie@outlook.fr")).to eq(julie.to_s)
  end
  it "Mail ko !" do
    expect(User.find_by_email("toto@outlook.fr")).to eq("WTF")
  end
end
