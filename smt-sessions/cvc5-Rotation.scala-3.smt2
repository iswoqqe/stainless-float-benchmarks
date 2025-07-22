; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!7 () Bool)

(assert start!7)

(assert (=> start!7 false))

(assert (=> start!7 true))

(push 1)

(check-sat)

(pop 1)

