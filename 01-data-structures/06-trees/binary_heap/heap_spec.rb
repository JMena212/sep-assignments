include RSpec

require_relative 'min_binary_heap'

RSpec.describe MinBinaryHeap, type: Class do
  let (:root) { Node.new("Braveheart", 78) }

  let (:tree) { MinBinaryHeap.new(root) }
  let (:pacific_rim) { Node.new("Pacific Rim", 72) }
  let (:star_wars) { Node.new("Star Wars: Return of the Jedi", 80) }
  let (:i_am_legend) {Node.new("I Am Legend", 69)}
  let (:avengers)  {Node.new("Marvel's Avengers", 92)}
  let (:life_of_pi)  {Node.new("Life of Pi", 86)}
  let (:jungle_book) {Node.new("The Jungle Book", 95)}
  let (:train_dragon)  {Node.new("How to Train Your Dragon: Hidden World", 91)}
  let (:too_fast)  {Node.new("2 Fast 2 Furious", 38)}


  describe "#insert(data)" do
      it "properly inserts node in heap order" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(root.title).to eq "2 Fast 2 Furious"
      expect(root.left.title).to eq "I Am Legend"
      expect(root.left.left.title).to eq "Pacific Rim"
      expect(root.left.right.title).to eq "Marvel's Avengers"
      expect(root.right.title).to eq "Star Wars: Return of the Jedi"
      expect(root.right.left.title).to eq "Life of Pi"
      expect(root.right.right.title).to eq "The Jungle Book"
      expect(root.left.left.left.title).to eq "How to Train Your Dragon: Hidden World"
      expect(root.left.left.right.title).to eq "Braveheart"

      end

     it "meets Minimum heap properties. A higher node must have a lower rating than a lower node" do
       tree.insert(root, pacific_rim)
       tree.insert(root, star_wars)
       tree.insert(root, i_am_legend)
       tree.insert(root, avengers)
       tree.insert(root, life_of_pi)
       tree.insert(root, jungle_book)
       tree.insert(root, train_dragon)
       tree.insert(root, too_fast)
       expect(root.left.rating < root.left.left.rating) && (root.left.rating < root.left.right.rating)
       expect (root.rating < root.left.rating && root.rating < root.right.rating)
   end
  end




  describe "#find(data)" do
    it "handles nil gracefully" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, nil)).to eq nil
    end

    it "properly finds a left node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, "I Am Legend").title).to eq "I Am Legend"
    end

    it "properly finds a left-left node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, "Pacific Rim").title).to eq "Pacific Rim"
    end

    it "properly finds a left-right node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, avengers.title).title).to eq "Marvel's Avengers"
    end

    it "properly finds a right node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, star_wars.title).title).to eq "Star Wars: Return of the Jedi"
    end

    it "properly finds a right-left node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, life_of_pi.title).title).to eq "Life of Pi"
    end

    it "properly finds a right-right node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      expect(tree.find(root, jungle_book.title).title).to eq "The Jungle Book"
    end
  end

  describe "#delete(data)" do
    it "handles nil gracefully" do
      expect(tree.delete(root, nil)).to eq nil
    end

    it "properly deletes a left node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      tree.delete(root, "Pacific Rim")
      expect(tree.find(root, "Pacific Rim")).to be_nil
    end

    it "properly deletes a left-left node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      tree.delete(root, "I Am Legend")
      expect(tree.find(root, "I Am Legend")).to be_nil
    end

    it "properly deletes a left-right node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      tree.delete(root, "Marvel's Avengers")
      expect(tree.find(root, "Marvel's Avengers")).to be_nil
    end

    it "properly deletes a right node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      tree.delete(root, "Star Wars: Return of the Jedi")
      expect(tree.find(root, "Star Wars: Return of the Jedi")).to be_nil
    end

    it "properly deletes a right-left node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      tree.delete(root, "Life of Pi")
      expect(tree.find(root, "Life of Pi")).to be_nil
    end

    it "properly deletes a right-right node" do
      tree.insert(root, pacific_rim)
      tree.insert(root, star_wars)
      tree.insert(root, i_am_legend)
      tree.insert(root, avengers)
      tree.insert(root, life_of_pi)
      tree.insert(root, jungle_book)
      tree.insert(root, train_dragon)
      tree.insert(root, too_fast)
      tree.delete(root, "The Jungle Book")
      expect(tree.find(root, "The Jungle Book")).to be_nil
    end
  end

  describe "#print" do
     specify {
       expected_output = "2 Fast 2 Furious Rating: 38\nI Am Legend Rating: 69\nStar Wars: Return of the Jedi Rating: 80\nPacific Rim Rating: 72\nMarvel's Avengers Rating: 92\nLife of Pi Rating: 86\nThe Jungle Book Rating: 95\nHow to Train Your Dragon: Hidden World Rating: 91\nBraveheart Rating: 78\n"
       tree.insert(root, pacific_rim)
       tree.insert(root, star_wars)
       tree.insert(root, i_am_legend)
       tree.insert(root, avengers)
       tree.insert(root, life_of_pi)
       tree.insert(root, jungle_book)
       tree.insert(root, train_dragon)
       tree.insert(root, too_fast)
       expect { tree.print(root) }.to output(expected_output).to_stdout
     }


  end
end
