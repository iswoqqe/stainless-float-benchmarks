; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!5 () Bool)

(assert start!5)

(assert (=> start!5 false))

(assert (=> start!5 true))

(push 1)

(check-sat)

(pop 1)

