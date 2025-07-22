; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2227 () Bool)

(assert start!2227)

(assert (=> start!2227 false))

(push 1)

(check-sat)

(pop 1)

