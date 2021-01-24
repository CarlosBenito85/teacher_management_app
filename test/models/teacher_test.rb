require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  
  def setup
    @teacher = Teacher.new(name: "Test User", email: "teacher@test.com")
  end
  
  test "should be valid" do
    assert @teacher.valid?
  end
  
  test "name should be present" do
    @teacher.name = ""
    assert_not @teacher.valid?
  end
  
  test "email should be present" do
    @teacher.email = ""
    assert_not @teacher.valid?
  end
  
  test "name should not be too long" do
    @teacher.name = "a" * 101
    assert_not @teacher.valid?
  end

  test "email should not be too long" do
    @teacher.email = "a" * 256
    assert_not @teacher.valid?
  end
    
  test "email should be valid" do
    valid_emails = %w[teacher@test.com TEACHER@test.COM Teach-ER@test.test.com
                      teacher_01@test.org teacher+02@test.es]
    valid_emails.each do |valid_email|
      @teacher.email = valid_email
      assert @teacher.valid?, "#{valid_email.inspect} should be valid"
    end
  end
  
  test "email should be invalid" do
    invalid_emails = %w[teacher@test,com teacher.org teacher@test.
                        teacher@test_com teachercom @test.com teacher@test..com]
    invalid_emails.each do |invalid_email|
      @teacher.email = invalid_email
      assert_not @teacher.valid?, "#{invalid_email.inspect} should be invalid"
    end
  end
  
  test "email should be unique" do
    duplicate_teacher = @teacher.dup
    @teacher.save
    assert_not duplicate_teacher.valid?
  end
  
end
