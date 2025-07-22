; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2319 () Bool)

(assert start!2319)

(declare-fun res!9452 () Bool)

(declare-fun e!6423 () Bool)

(assert (=> start!2319 (=> (not res!9452) (not e!6423))))

(declare-datatypes ((array!809 0))(
  ( (array!810 (arr!350 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!350 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!809)

(assert (=> start!2319 (= res!9452 (= (size!350 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2319 e!6423))

(declare-fun array_inv!299 (array!809) Bool)

(assert (=> start!2319 (array_inv!299 fq!120)))

(assert (=> start!2319 true))

(declare-fun b!11731 () Bool)

(declare-fun res!9453 () Bool)

(assert (=> b!11731 (=> (not res!9453) (not e!6423))))

(declare-fun fqInv!0 (array!809) Bool)

(assert (=> b!11731 (= res!9453 (fqInv!0 fq!120))))

(declare-fun i!347 () (_ BitVec 32))

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun b!11732 () Bool)

(assert (=> b!11732 (= e!6423 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (let ((ix!260 (bvadd i!347 #b00000000000000000000000000000001))) (or (bvslt ix!260 #b00000000000000000000000000000000) (bvsge ix!260 #b00000000000000000000000000010100)))))))

(assert (= (and start!2319 res!9452) b!11731))

(assert (= (and b!11731 res!9453) b!11732))

(declare-fun m!19689 () Bool)

(assert (=> start!2319 m!19689))

(declare-fun m!19691 () Bool)

(assert (=> b!11731 m!19691))

(push 1)

(assert (not start!2319))

(assert (not b!11731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

