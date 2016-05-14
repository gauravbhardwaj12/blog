class Student
 #setter
  def first_name=(value)
  	@first_name = value
  end

  #getter
   def first_name
   	@first_name
   end

   #setter
  def last_name=(value)
  	@last_name = value
  end

  #getter
   def last_name
   	@last_name
   end

   def full_name
   	 "#{first_name}" + "#{last_name}"
   end
end