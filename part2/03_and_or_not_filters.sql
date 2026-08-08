/*POSTGRESQL — AND, OR, NOT
1. AND
-------
• AND is a logical operator.
• It is used to combine multiple conditions.
• All conditions must be TRUE.
• If even one condition is FALSE, the result is FALSE.

Example:
A AND B

Meaning:
Both A and B must be TRUE.

Key point:
AND = ALL conditions


2. OR
------
• OR is a logical operator.
• It is used when there are multiple possible conditions.
• At least one condition must be TRUE.
• It returns FALSE only when all conditions are FALSE.

Example:
A OR B

Meaning:
Either A or B, or both, can be TRUE.

Key point:
OR = ANY / AT LEAST ONE condition


3. NOT
-------
• NOT is a logical operator.
• It reverses the result of a condition.
• TRUE becomes FALSE.
• FALSE becomes TRUE.

Example:
NOT A

Meaning:
A must be FALSE.

Key point:
NOT = OPPOSITE


4. OPERATOR PRECEDENCE
----------------------
PostgreSQL evaluates logical operators in this order:

1. NOT
2. AND
3. OR

Easy to remember:

NOT → AND → OR


5. PARENTHESES
--------------
• Parentheses are used to control the order of evaluation.
• They make complex conditions easier to understand.
• They can change the final result of a condition.

Important:
Use parentheses when combining AND and OR.


6. AND vs OR
------------
AND:
• All conditions must be TRUE.
• Makes filtering more restrictive.

OR:
• At least one condition must be TRUE.
• Gives more alternatives.


7. NOT
-------
• Used to exclude or reverse a condition.
• Commonly used when we want the opposite result.


8. NULL AND LOGICAL OPERATORS
-----------------------------
• PostgreSQL uses three logical results:
  TRUE
  FALSE
  UNKNOWN

• NULL represents an unknown or missing value.
• Comparisons involving NULL generally result in UNKNOWN.
• NULL should be checked using IS NULL or IS NOT NULL.


9. DE MORGAN'S LAWS
-------------------
Two important rules:

NOT (A AND B)
= NOT A OR NOT B

NOT (A OR B)
= NOT A AND NOT B


10. IMPORTANT POINTS
--------------------
• AND = ALL
• OR = ANY
• NOT = OPPOSITE
• NOT has the highest precedence.
• AND has higher precedence than OR.
• Parentheses can control evaluation order.
• AND, OR, and NOT are mainly used for filtering conditions.
• They are commonly used with WHERE and HAVING.


11. EASY EXAM/INTERVIEW EXPLANATION
-----------------------------------
AND:
Used when every condition must be satisfied.

OR:
Used when any one of the conditions can be satisfied.

NOT:
Used to reverse or negate a condition.

In short:

AND → All conditions
OR  → Any condition
NOT → Reverse condition */

SELECT name ,cartogory ,price
FROM product
WHERE cartogory = 'Electronics' AND price > 1000;




