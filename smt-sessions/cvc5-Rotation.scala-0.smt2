; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1 () Bool)

(assert start!1)

(assert (=> start!1 false))

(assert (=> start!1 true))

(push 1)

(check-sat)

(pop 1)

