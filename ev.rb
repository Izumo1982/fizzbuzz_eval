def fizz(*)
  "fizz"
end

def buzz(*)
  str = "#{yield} " if block_given?
  "#{str}buzz"
end

def other(num)
  num
end

def fizz_buzz(num)
	str = 'fizz'      if num % 3 == 0
	str = 'buzz'      if num % 5 == 0
	str = 'buzz{ fizz }' if num % 15 == 0
	str ||= num.to_s
  eval("p #{str}")
end

for i in 1..100 do
  fizz_buzz(i)
end

