# Code your solution in variable.rb
describe "local variables" do

  let(:right_answers) { ["greeting = \"Hello World\"", "greeting=\"Hello World\"", "greeting = \'Hello World\'", "greeting=\'Hello World\'"] }

  before(:each) do
    @content = File.open("variable.rb", "r") { |f| content = f.read }
  end
describe "./variable.rb" do

  it "defined a local variable called greeting and set it equal to 'Hello World'" do
    expect(right_answers.any? { |answer| @content.match(answer) }).to eq(true)
  end
    greeting = get_variable_from_file('./variable.rb', "greeting")

  it "should not be an instance variable" do
    expect(@content).to_not include("@")
    expect(greeting).to eq("Hello World")
  end

  it "should not be an global variable" do
    expect(@content).to_not include("$")
  end
end