; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2239 () Bool)

(assert start!2239)

(declare-fun res!9293 () Bool)

(declare-fun e!6276 () Bool)

(assert (=> start!2239 (=> (not res!9293) (not e!6276))))

(declare-datatypes ((array!768 0))(
  ( (array!769 (arr!334 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!334 (_ BitVec 32))) )
))
(declare-fun fq!115 () array!768)

(assert (=> start!2239 (= res!9293 (= (size!334 fq!115) #b00000000000000000000000000010100))))

(assert (=> start!2239 e!6276))

(declare-fun array_inv!283 (array!768) Bool)

(assert (=> start!2239 (array_inv!283 fq!115)))

(assert (=> start!2239 true))

(declare-fun b!11502 () Bool)

(declare-fun res!9294 () Bool)

(assert (=> b!11502 (=> (not res!9294) (not e!6276))))

(declare-fun fqInv!0 (array!768) Bool)

(assert (=> b!11502 (= res!9294 (fqInv!0 fq!115))))

(declare-fun b!11503 () Bool)

(declare-fun jz!74 () (_ BitVec 32))

(assert (=> b!11503 (= e!6276 (and (bvsle #b00000000000000000000000000000000 jz!74) (bvslt jz!74 #b00000000000000000000000000010100) (let ((i!338 (bvsub jz!74 #b00000000000000000000000000000001))) (and (bvsge i!338 #b00000000000000000000000000000000) (bvslt i!338 #b00000000000000000000000000000000)))))))

(assert (= (and start!2239 res!9293) b!11502))

(assert (= (and b!11502 res!9294) b!11503))

(declare-fun m!19183 () Bool)

(assert (=> start!2239 m!19183))

(declare-fun m!19185 () Bool)

(assert (=> b!11502 m!19185))

(push 1)

(assert (not start!2239))

(assert (not b!11502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

