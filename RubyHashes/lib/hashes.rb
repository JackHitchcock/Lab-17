# RubyHashes
# Part I
def array_2_hash emails, contacts
     contacts2 = {}
    x = 0
    
    if emails[0] == nil
        return contacts
    else
        contacts.each do |key, value|
            key2 = :"#{key}"
            contacts2[key2] = emails[x]
            x+=1
        end
    end
    return contacts2
end

# Part II
def array2d_2_hash contact_info, contacts
        contacts2 = {}
    x = 0
    
    if contact_info[0][0] == nil
        return contacts
    end
    
    
    contacts.each do |key, value|
        key2 = :"#{key}"
        contacts2[key2] = {:email => contact_info[x][0], :phone => contact_info[x][1]}
        
        x+=1
    end
    return contacts2

end

# Part III
#def hash_2_array contacts
contacts = {"Bob Smith" =>{:email=>"bobsmith@example.com", :phone=>"555-555-5555"} , "Sally Field"=>{:email=>"sallyfield@example.com", :phone=>"111-111-1111"}}
def hash_2_array contacts
keys = contacts.keys
l = contacts.length
ar = Array.new(3){Array.new(l)}
for i in 0..l-1
ar[2][i] = keys[i]
ar[0][i] = contacts[keys[i]][:email]
ar[1][i] = contacts[keys[i]][:phone]
end
return ar
end
hash_2_array contacts


