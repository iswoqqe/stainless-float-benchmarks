; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3 () Bool)

(assert start!3)

(assert (=> start!3 false))

(assert (=> start!3 true))

(push 1)

(check-sat)

(pop 1)

