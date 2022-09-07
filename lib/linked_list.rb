require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    return if n > length || n < 1

    current = head

    (length - n).times do
      current = current.next_node
    end

    current.value
  end

  def length
    return 0 unless head

    current = head
    i = 1

    until current.next_node.nil?
      current = current.next_node
      i += 1
    end

    i
  end

end
