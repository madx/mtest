module Format
  def self.included(parent)
    {:_r => '31', :_g => '32', :_p => "35", :_w => "1;37"}.each do |m, c|
      parent.class_eval { define_method(m) { "\e[#{c}m#{self}\e[00m" } }
    end
  end
end
String.send(:include, Format)

def MTest(tests)
  threads = []; results = {:pass => 0, :fail => 0, :err => 0}
  tests.each do |t|
    if t.is_a?(String) 
      puts t
    else
      e,p,v = *t
      threads << Thread.new do
        begin
          if (r = p.call) == v
            results[:pass] += 1
            puts ". #{e}"._g
          else
            results[:fail] += 1
            puts "! #{e} was #{r}, expected #{v}"._r
          end
        rescue => x
          results[:err] += 1
          puts "@ #{x.class} at line #{x.backtrace[0].split(':')[1]}"._p
        end
      end
    end
  end
  threads.join
  results
end
