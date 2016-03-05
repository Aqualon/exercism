defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    no_split_for_letters_numbers_and_dashes = ~r/([^\p{L}\p{N}\p{Pd}])+/u

    sentence
    |> String.downcase
    |> String.split(no_split_for_letters_numbers_and_dashes, trim: true)
    |> Enum.reduce(Map.new, &accumulate_count/2)
  end

  defp accumulate_count(word, dict) do
    Map.update(dict, word, 1, &Enum.sum([1, &1]))
  end
end
