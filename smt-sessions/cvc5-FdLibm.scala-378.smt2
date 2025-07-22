; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2241 () Bool)

(assert start!2241)

(declare-fun res!9299 () Bool)

(declare-fun e!6282 () Bool)

(assert (=> start!2241 (=> (not res!9299) (not e!6282))))

(declare-datatypes ((array!770 0))(
  ( (array!771 (arr!335 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!335 (_ BitVec 32))) )
))
(declare-fun fq!115 () array!770)

(assert (=> start!2241 (= res!9299 (= (size!335 fq!115) #b00000000000000000000000000010100))))

(assert (=> start!2241 e!6282))

(declare-fun array_inv!284 (array!770) Bool)

(assert (=> start!2241 (array_inv!284 fq!115)))

(assert (=> start!2241 true))

(declare-fun b!11508 () Bool)

(declare-fun res!9300 () Bool)

(assert (=> b!11508 (=> (not res!9300) (not e!6282))))

(declare-fun fqInv!0 (array!770) Bool)

(assert (=> b!11508 (= res!9300 (fqInv!0 fq!115))))

(declare-fun b!11509 () Bool)

(declare-fun jz!74 () (_ BitVec 32))

(assert (=> b!11509 (= e!6282 (and (bvsle #b00000000000000000000000000000000 jz!74) (bvslt jz!74 #b00000000000000000000000000010100) (not (= (bvand jz!74 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!74 #b10000000000000000000000000000000) (bvand (bvsub jz!74 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2241 res!9299) b!11508))

(assert (= (and b!11508 res!9300) b!11509))

(declare-fun m!19187 () Bool)

(assert (=> start!2241 m!19187))

(declare-fun m!19189 () Bool)

(assert (=> b!11508 m!19189))

(push 1)

(assert (not start!2241))

(assert (not b!11508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

