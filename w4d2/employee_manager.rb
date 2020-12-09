class Employee 

  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def boss boss_str
    @boss = boss_str
  end

  def bonus(mult)
    bonus = @salary * mult
  end


end


class Manager < Employee
  attr_reader :employees
  attr_accessor :emp_salaries
  def initialize(name, title, salary, employees)
    super(name, title, salary)
    @employees = employees # array of all empl and sub-empl
    @emp_salaries = emp_salaries
  end

  def emp_salaries
    self.dfs
    # @employees.each do |emp| 
    #   @emp_salaries += emp.salary
    # end
    # p @emp_salaries
  end

  def bonus(mult)
    @bonus = @emp_salaries * mult 
  end

  def dfs
    return nil if self.employees.empty?
    @emp_salaries = 0
    @employees.each do |emp|
      if emp.is_a?(Manager)
        @emp_salaries += emp.dfs
      else
        @emp_salaries += emp.salary
      end
    end
    @emp_salaries
  end

end

emp_1 = Employee.new("Ned", "IT Consultant", 70000)
emp_2 = Employee.new("Tom", "software engineer", 80000) 
emp_4 = Employee.new("Tim", "janitor", 45000)           
emp_5 = Employee.new("Dan", "janitor", 45000)

emp_3 = Manager.new("Joe", "plant services manager", 60000, [emp_4, emp_5])
mgr_1 = Manager.new("Nicole", "Team Leader", 100000, [emp_1,emp_2,emp_3])



emp_1.boss(mgr_1)
emp_2.boss(mgr_1)
emp_3.boss(mgr_1)
emp_4.boss(emp_3)
emp_5.boss(emp_3)

# p mgr_1.bonus(0.5)
p mgr_1.emp_salaries

