package com.b1n.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraitValidator implements ConstraintValidator<CourseCode, String> {
   private String prefix;
   public void initialize(CourseCode constraint) {
      prefix = constraint.value();
   }

   public boolean isValid(String obj, ConstraintValidatorContext context) {
      if(obj != null) return obj.startsWith(prefix);
      return true;
   }
}
