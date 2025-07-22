; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!471 () Bool)

(assert start!471)

(assert (=> start!471 false))

(assert (=> start!471 true))

(push 1)

(check-sat)

(pop 1)

