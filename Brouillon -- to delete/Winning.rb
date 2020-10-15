  @A1 = "O"
  @A2 = "O"
  @A3 = nil
  @B1 = "X"
  @B2 = "X"
  @B3 = "O"
  @C1 = "O"
  @C2 = "X"
  @C3 = nil

 def is_victory?
   if (@A1 == @A2 && @A1 == @A3 && @A1 != nil) || (@B1 == @B2 && @B1 == @B3 && @B1 != nil) || (@C1 == @C2 && @C1 == @C3 && @C1 != nil) || (@A1 == @B2 && @A1 == @C3 && @A1 != nil) || (@A3 == @B2 && @A3 == @C1 && @A3 != nil) || (@A1 == @B1 && @A1 == @C1 && @C1 != nil) || (@A2 == @B2 && @A2 == @C2 && @C2 != nil) || (@A3 == @B3 && @A3 == @C3 && @C3 != nil)
    puts "true"
   elsif @A1 != nil && @A2 != nil && @A3 != nil && @B1 != nil && @B2 != nil && @B3 != nil && @C1 != nil && @C2 != nil && @C3 != nil
     puts "c'est un match nul !"
   else
     puts "false"
   end
 end

is_victory?
