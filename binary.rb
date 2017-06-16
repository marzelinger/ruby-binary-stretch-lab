# Create a program that converts a decimal number to its binary equivalent. Write your code here.de
def decimal_to_binary(dec)
    if (dec.to_i != dec) || (dec < 0)
        "This method only accepts positive integers"
    else
    
    binary = []

    while dec!=0
        num = (dec % 2).to_i
        binary.push(num)
        dec = (dec/2).floor
    end
    binary = binary.reverse
    bin_string = ""
    binary.each{|digit|
    bin_string = bin_string + "#{digit}"
    }
    return bin_string
    end
end

def binary_to_decimal(bin)
    check = bin.to_s
    if check.gsub("0","").gsub("1","")!=""
        return "This method only accepts binary"
    else
    binarray = bin.to_s.split(//)
    binarray= binarray.reverse
    dec = 0
    binarray.each_with_index{|val,index|
        dec = dec + val.to_i* (2 ** index)
    }
    end
    return dec
end