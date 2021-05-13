load 'test.rb'
Test=FinalCheck.new
require 'matrix'

def rotate_transform matrix, forgatas
  my_matrix= Matrix[*matrix]
  new_matrix =[]
  hossz=my_matrix.row_count
  if forgatas%2 ==0 && forgatas !=4
    1.upto(hossz) do |sor|
    new_matrix << my_matrix.row(-sor).to_a.reverse
    end
  elsif forgatas%2 ==0 && forgatas==4
    1.upto(hossz) do |sor|
      new_matrix << my_matrix.row(sor-1).to_a

  end

  elsif forgatas < 0 || forgatas == 3
    1.upto(hossz) do |sor|
    new_matrix << my_matrix.transpose.row(-sor).to_a
    end
  else
    1.upto(hossz) do |sor|
      new_matrix << my_matrix.transpose.row(sor-1).to_a.reverse
      end
  end
  print  Matrix[*new_matrix]
  return new_matrix
end

Test.assert_equals(rotate_transform([
                                      [2, 4],
                                      [0, 0]], 1),
                   [
                     [0, 2],
                     [0, 4]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [2, 4],
                       [0, 0]], -1),
                   [
                     [4, 0],
                     [2, 0]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [1, 4, 0, 0],
                       [2, 8, 0, 0],
                       [0, 0, 3, 5],
                       [0, 0, 7, 1]], 2),
                   [
                     [1, 7, 0, 0],
                     [5, 3, 0, 0],
                     [0, 0, 8, 2],
                     [0, 0, 4, 1]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [4, 3, 1, 2],
                       [2, 1, 3, 4],
                       [0, 0, 0, 0],
                       [0, 0, 0, 0]], -2),
                   [
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [4, 3, 1, 2],
                     [2, 1, 3, 4]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [2, 3, 5, 0, 0, 0],
                       [1, 7, 1, 0, 0, 0],
                       [5, 3, 2, 0, 0, 0],
                       [0, 0, 0, 1, 3, 4],
                       [0, 0, 0, 2, 8, 2],
                       [0, 0, 0, 4, 3, 1]], 5),
                   [
                     [0, 0, 0, 5, 1, 2],
                     [0, 0, 0, 3, 7, 3],
                     [0, 0, 0, 2, 1, 5],
                     [4, 2, 1, 0, 0, 0],
                     [3, 8, 3, 0, 0, 0],
                     [1, 2, 4, 0, 0, 0]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [2, 3, 5, 0, 0, 0],
                       [1, 7, 1, 0, 0, 0],
                       [5, 3, 2, 0, 0, 0],
                       [0, 0, 0, 1, 3, 4],
                       [0, 0, 0, 2, 8, 2],
                       [0, 0, 0, 4, 3, 1]], 3),
                   [
                     [0, 0, 0, 4, 2, 1],
                     [0, 0, 0, 3, 8, 3],
                     [0, 0, 0, 1, 2, 4],
                     [5, 1, 2, 0, 0, 0],
                     [3, 7, 3, 0, 0, 0],
                     [2, 1, 5, 0, 0, 0]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [1, 1, 3, 3, 0, 0, 0, 0],
                       [1, 1, 3, 3, 0, 0, 0, 0],
                       [2, 2, 4, 4, 0, 0, 7, 7],
                       [2, 2, 4, 4, 0, 0, 7, 7],
                       [0, 0, 0, 0, 7, 7, 1, 1],
                       [0, 0, 0, 0, 7, 7, 1, 1],
                       [0, 0, 7, 7, 1, 1, 7, 7],
                       [0, 0, 7, 7, 1, 1, 7, 7]], -5),
                   [
                     [0, 0, 7, 7, 1, 1, 7, 7],
                     [0, 0, 7, 7, 1, 1, 7, 7],
                     [0, 0, 0, 0, 7, 7, 1, 1],
                     [0, 0, 0, 0, 7, 7, 1, 1],
                     [3, 3, 4, 4, 0, 0, 7, 7],
                     [3, 3, 4, 4, 0, 0, 7, 7],
                     [1, 1, 2, 2, 0, 0, 0, 0],
                     [1, 1, 2, 2, 0, 0, 0, 0]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [1, 1, 3, 3, 0, 0, 0, 0],
                       [1, 1, 3, 3, 0, 0, 0, 0],
                       [2, 2, 4, 4, 0, 0, 7, 7],
                       [2, 2, 4, 4, 0, 0, 7, 7],
                       [0, 0, 0, 0, 7, 7, 1, 1],
                       [0, 0, 0, 0, 7, 7, 1, 1],
                       [0, 0, 7, 7, 1, 1, 7, 7],
                       [0, 0, 7, 7, 1, 1, 7, 7]], 4),
                   [
                     [1, 1, 3, 3, 0, 0, 0, 0],
                     [1, 1, 3, 3, 0, 0, 0, 0],
                     [2, 2, 4, 4, 0, 0, 7, 7],
                     [2, 2, 4, 4, 0, 0, 7, 7],
                     [0, 0, 0, 0, 7, 7, 1, 1],
                     [0, 0, 0, 0, 7, 7, 1, 1],
                     [0, 0, 7, 7, 1, 1, 7, 7],
                     [0, 0, 7, 7, 1, 1, 7, 7]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [0, 0, 0, 0],
                       [0, 3, 3, 0],
                       [0, 3, 3, 0],
                       [0, 0, 0, 0]], -3),
                   [
                     [0, 0, 0, 0],
                     [0, 3, 3, 0],
                     [0, 3, 3, 0],
                     [0, 0, 0, 0]
                   ])

Test.assert_equals(rotate_transform(
                     [
                       [3, 7, 1, 2],
                       [7, 3, 2, 1],
                       [1, 2, 3, 7],
                       [2, 1, 7, 3]], -4),
                   [
                     [3, 7, 1, 2],
                     [7, 3, 2, 1],
                     [1, 2, 3, 7],
                     [2, 1, 7, 3]
                   ])