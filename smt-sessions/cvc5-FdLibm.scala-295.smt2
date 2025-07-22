; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1887 () Bool)

(assert start!1887)

(declare-fun b!10223 () Bool)

(declare-fun e!5409 () Bool)

(declare-fun e!5411 () Bool)

(assert (=> b!10223 (= e!5409 e!5411)))

(declare-fun res!8488 () Bool)

(assert (=> b!10223 (=> (not res!8488) (not e!5411))))

(declare-fun e!15 () (_ BitVec 32))

(declare-fun lt!4834 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4835 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(assert (=> b!10223 (= res!8488 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4835 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4835) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4834 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10223 (= lt!4835 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-datatypes ((array!723 0))(
  ( (array!724 (arr!313 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!313 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!723)

(assert (=> b!10223 (= lt!4834 (bvsub (size!313 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10224 () Bool)

(declare-fun res!8487 () Bool)

(assert (=> b!10224 (=> (not res!8487) (not e!5411))))

(declare-fun f!58 () array!723)

(declare-fun fInv!0 (array!723) Bool)

(assert (=> b!10224 (= res!8487 (fInv!0 f!58))))

(declare-fun res!8489 () Bool)

(assert (=> start!1887 (=> (not res!8489) (not e!5409))))

(assert (=> start!1887 (= res!8489 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1887 e!5409))

(assert (=> start!1887 true))

(declare-fun array_inv!263 (array!723) Bool)

(assert (=> start!1887 (array_inv!263 xx!44)))

(assert (=> start!1887 (array_inv!263 f!58)))

(declare-fun b!10225 () Bool)

(assert (=> b!10225 (= e!5411 (and (bvsle i!179 (bvadd lt!4834 jz!32)) (= (bvand i!179 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!179 #b10000000000000000000000000000000) (bvand (bvadd i!179 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!10222 () Bool)

(declare-fun res!8490 () Bool)

(assert (=> b!10222 (=> (not res!8490) (not e!5409))))

(declare-fun xxInv!0 (array!723) Bool)

(assert (=> b!10222 (= res!8490 (xxInv!0 xx!44))))

(assert (= (and start!1887 res!8489) b!10222))

(assert (= (and b!10222 res!8490) b!10223))

(assert (= (and b!10223 res!8488) b!10224))

(assert (= (and b!10224 res!8487) b!10225))

(declare-fun m!18067 () Bool)

(assert (=> b!10224 m!18067))

(declare-fun m!18069 () Bool)

(assert (=> start!1887 m!18069))

(declare-fun m!18071 () Bool)

(assert (=> start!1887 m!18071))

(declare-fun m!18073 () Bool)

(assert (=> b!10222 m!18073))

(push 1)

(assert (not b!10224))

(assert (not b!10222))

(assert (not start!1887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

