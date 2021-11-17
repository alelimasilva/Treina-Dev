class FileParser
    def to_binary_file(string)
        i=0
        num = ''
        f = File.new("data/data.txt", "w")
        loop do
            if(i > string.size())
                break
            end
            if(string[i] == ";" || i == string.size())
                a= "%b" % num.to_i()
                f.write(a)
                if (i != string.size())
                    f.write("\n")
                end
                num.clear()
            else
                num+= string[i]
            end
            i+=1
        end
        f.close()
    end
end
