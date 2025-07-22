; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3177 () Bool)

(assert start!3177)

(declare-fun x!132 () (_ FloatingPoint 11 53))

(assert (=> start!3177 false))

(assert (=> start!3177 true))

(push 1)

(check-sat)

(pop 1)

