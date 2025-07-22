; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2317 () Bool)

(assert start!2317)

(declare-fun res!9446 () Bool)

(declare-fun e!6417 () Bool)

(assert (=> start!2317 (=> (not res!9446) (not e!6417))))

(declare-datatypes ((array!807 0))(
  ( (array!808 (arr!349 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!349 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!807)

(assert (=> start!2317 (= res!9446 (= (size!349 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2317 e!6417))

(declare-fun array_inv!298 (array!807) Bool)

(assert (=> start!2317 (array_inv!298 fq!120)))

(assert (=> start!2317 true))

(declare-fun b!11725 () Bool)

(declare-fun res!9447 () Bool)

(assert (=> b!11725 (=> (not res!9447) (not e!6417))))

(declare-fun fqInv!0 (array!807) Bool)

(assert (=> b!11725 (= res!9447 (fqInv!0 fq!120))))

(declare-fun b!11726 () Bool)

(declare-fun i!347 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun jz!77 () (_ BitVec 32))

(assert (=> b!11726 (= e!6417 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (= (bvand i!347 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!347 #b10000000000000000000000000000000) (bvand (bvadd i!347 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2317 res!9446) b!11725))

(assert (= (and b!11725 res!9447) b!11726))

(declare-fun m!19685 () Bool)

(assert (=> start!2317 m!19685))

(declare-fun m!19687 () Bool)

(assert (=> b!11725 m!19687))

(push 1)

(assert (not start!2317))

(assert (not b!11725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

