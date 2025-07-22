; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2315 () Bool)

(assert start!2315)

(declare-fun res!9440 () Bool)

(declare-fun e!6411 () Bool)

(assert (=> start!2315 (=> (not res!9440) (not e!6411))))

(declare-datatypes ((array!805 0))(
  ( (array!806 (arr!348 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!348 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!805)

(assert (=> start!2315 (= res!9440 (= (size!348 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2315 e!6411))

(declare-fun array_inv!297 (array!805) Bool)

(assert (=> start!2315 (array_inv!297 fq!120)))

(assert (=> start!2315 true))

(declare-fun b!11719 () Bool)

(declare-fun res!9441 () Bool)

(assert (=> b!11719 (=> (not res!9441) (not e!6411))))

(declare-fun fqInv!0 (array!805) Bool)

(assert (=> b!11719 (= res!9441 (fqInv!0 fq!120))))

(declare-fun b!11720 () Bool)

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun i!347 () (_ BitVec 32))

(assert (=> b!11720 (= e!6411 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (not (= (bvand jz!77 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!77 #b10000000000000000000000000000000) (bvand (bvsub jz!77 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2315 res!9440) b!11719))

(assert (= (and b!11719 res!9441) b!11720))

(declare-fun m!19681 () Bool)

(assert (=> start!2315 m!19681))

(declare-fun m!19683 () Bool)

(assert (=> b!11719 m!19683))

(push 1)

(assert (not b!11719))

(assert (not start!2315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

