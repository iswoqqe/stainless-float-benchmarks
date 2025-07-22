; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!649 () Bool)

(assert start!649)

(declare-fun res!1794 () Bool)

(declare-fun e!955 () Bool)

(assert (=> start!649 (=> (not res!1794) (not e!955))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!649 (= res!1794 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!649 e!955))

(assert (=> start!649 true))

(declare-datatypes ((array!72 0))(
  ( (array!73 (arr!32 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!32 (_ BitVec 32))) )
))
(declare-fun q!70 () array!72)

(declare-fun array_inv!12 (array!72) Bool)

(assert (=> start!649 (array_inv!12 q!70)))

(declare-fun b!2045 () Bool)

(declare-fun res!1795 () Bool)

(assert (=> b!2045 (=> (not res!1795) (not e!955))))

(declare-fun qInv!0 (array!72) Bool)

(assert (=> b!2045 (= res!1795 (qInv!0 q!70))))

(declare-fun b!2046 () Bool)

(assert (=> b!2046 (= e!955 (or (bvslt jz!42 #b00000000000000000000000000000000) (bvsge jz!42 (size!32 q!70))))))

(assert (= (and start!649 res!1794) b!2045))

(assert (= (and b!2045 res!1795) b!2046))

(declare-fun m!4225 () Bool)

(assert (=> start!649 m!4225))

(declare-fun m!4227 () Bool)

(assert (=> b!2045 m!4227))

(push 1)

(assert (not b!2045))

(assert (not start!649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2013 () Bool)

(declare-fun res!1798 () Bool)

(declare-fun e!959 () Bool)

(assert (=> d!2013 (=> (not res!1798) (not e!959))))

(assert (=> d!2013 (= res!1798 (= (size!32 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2013 (= (qInv!0 q!70) e!959)))

(declare-fun b!2049 () Bool)

(declare-fun lambda!78 () Int)

(declare-fun all20!0 (array!72 Int) Bool)

(assert (=> b!2049 (= e!959 (all20!0 q!70 lambda!78))))

(assert (= (and d!2013 res!1798) b!2049))

(declare-fun m!4229 () Bool)

(assert (=> b!2049 m!4229))

(assert (=> b!2045 d!2013))

(declare-fun d!2015 () Bool)

(assert (=> d!2015 (= (array_inv!12 q!70) (bvsge (size!32 q!70) #b00000000000000000000000000000000))))

(assert (=> start!649 d!2015))

(push 1)

(assert (not b!2049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

