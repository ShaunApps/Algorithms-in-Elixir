defmodule Binary do
  def search(array, targetValue) do
    search(array, targetValue, 1, length(array))
  end

  defp search(array, targetValue, min, max) when max < min do
    -1
  end

  defp search(array, targetValue, min, max) do
    mid = div(min + max, 2)
    guess = Enum.at(array, mid)
    cond do
      guess > targetValue -> search(array, targetValue, min, mid-1)
      guess < targetValue -> search(array, targetValue, mid+1, max)
      true                -> mid
    end
  end
end



primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
		41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
