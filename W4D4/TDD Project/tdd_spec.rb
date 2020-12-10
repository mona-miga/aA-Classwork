describe "my_unique" do
  let (:arr) { [2,2,3,3,4,4,5,5] } 
  let (:new_arr) { [2,3,4,5] }
  
  it "remove dups" do 
    arr.each do |el|
      expect(el.count).to eq(1)
    end
  end

  it "return new arr" do
    expect { my_unique(arr) } to not change(arr)
  end


end