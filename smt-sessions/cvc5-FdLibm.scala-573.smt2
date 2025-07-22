; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3151 () Bool)

(assert start!3151)

(declare-fun b_free!59 () Bool)

(declare-fun b_next!59 () Bool)

(assert (=> start!3151 (= b_free!59 (not b_next!59))))

(declare-fun tp!89 () Bool)

(declare-fun b_and!501 () Bool)

(assert (=> start!3151 (= tp!89 b_and!501)))

(declare-fun b!17917 () Bool)

(declare-fun res!14348 () Bool)

(declare-fun e!9477 () Bool)

(assert (=> b!17917 (=> (not res!14348) (not e!9477))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1412 0))(
  ( (array!1413 (arr!618 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!618 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1412)

(declare-fun dynLambda!72 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17917 (= res!14348 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17918 () Bool)

(declare-fun res!14350 () Bool)

(assert (=> b!17918 (=> (not res!14350) (not e!9477))))

(assert (=> b!17918 (= res!14350 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000110)))))

(declare-fun b!17919 () Bool)

(declare-fun res!14345 () Bool)

(assert (=> b!17919 (=> (not res!14345) (not e!9477))))

(assert (=> b!17919 (= res!14345 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000100)))))

(declare-fun b!17920 () Bool)

(declare-fun res!14347 () Bool)

(assert (=> b!17920 (=> (not res!14347) (not e!9477))))

(assert (=> b!17920 (= res!14347 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!17921 () Bool)

(declare-fun res!14349 () Bool)

(assert (=> b!17921 (=> (not res!14349) (not e!9477))))

(assert (=> b!17921 (= res!14349 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000011)))))

(declare-fun res!14346 () Bool)

(assert (=> start!3151 (=> (not res!14346) (not e!9477))))

(assert (=> start!3151 (= res!14346 (= (size!618 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3151 e!9477))

(declare-fun array_inv!566 (array!1412) Bool)

(assert (=> start!3151 (array_inv!566 a!12)))

(assert (=> start!3151 tp!89))

(declare-fun b!17922 () Bool)

(declare-fun res!14351 () Bool)

(assert (=> b!17922 (=> (not res!14351) (not e!9477))))

(assert (=> b!17922 (= res!14351 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000101)))))

(declare-fun b!17923 () Bool)

(declare-fun res!14352 () Bool)

(assert (=> b!17923 (=> (not res!14352) (not e!9477))))

(assert (=> b!17923 (= res!14352 (dynLambda!72 P!5 (select (arr!618 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17924 () Bool)

(assert (=> b!17924 (= e!9477 (bvsge #b00000000000000000000000000000111 (size!618 a!12)))))

(assert (= (and start!3151 res!14346) b!17923))

(assert (= (and b!17923 res!14352) b!17917))

(assert (= (and b!17917 res!14348) b!17920))

(assert (= (and b!17920 res!14347) b!17921))

(assert (= (and b!17921 res!14349) b!17919))

(assert (= (and b!17919 res!14345) b!17922))

(assert (= (and b!17922 res!14351) b!17918))

(assert (= (and b!17918 res!14350) b!17924))

(declare-fun b_lambda!8383 () Bool)

(assert (=> (not b_lambda!8383) (not b!17917)))

(declare-fun t!633 () Bool)

(declare-fun tb!443 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!633) tb!443))

(declare-fun result!443 () Bool)

(assert (=> tb!443 (= result!443 true)))

(assert (=> b!17917 t!633))

(declare-fun b_and!503 () Bool)

(assert (= b_and!501 (and (=> t!633 result!443) b_and!503)))

(declare-fun b_lambda!8385 () Bool)

(assert (=> (not b_lambda!8385) (not b!17922)))

(declare-fun t!635 () Bool)

(declare-fun tb!445 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!635) tb!445))

(declare-fun result!445 () Bool)

(assert (=> tb!445 (= result!445 true)))

(assert (=> b!17922 t!635))

(declare-fun b_and!505 () Bool)

(assert (= b_and!503 (and (=> t!635 result!445) b_and!505)))

(declare-fun b_lambda!8387 () Bool)

(assert (=> (not b_lambda!8387) (not b!17918)))

(declare-fun t!637 () Bool)

(declare-fun tb!447 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!637) tb!447))

(declare-fun result!447 () Bool)

(assert (=> tb!447 (= result!447 true)))

(assert (=> b!17918 t!637))

(declare-fun b_and!507 () Bool)

(assert (= b_and!505 (and (=> t!637 result!447) b_and!507)))

(declare-fun b_lambda!8389 () Bool)

(assert (=> (not b_lambda!8389) (not b!17923)))

(declare-fun t!639 () Bool)

(declare-fun tb!449 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!639) tb!449))

(declare-fun result!449 () Bool)

(assert (=> tb!449 (= result!449 true)))

(assert (=> b!17923 t!639))

(declare-fun b_and!509 () Bool)

(assert (= b_and!507 (and (=> t!639 result!449) b_and!509)))

(declare-fun b_lambda!8391 () Bool)

(assert (=> (not b_lambda!8391) (not b!17919)))

(declare-fun t!641 () Bool)

(declare-fun tb!451 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!641) tb!451))

(declare-fun result!451 () Bool)

(assert (=> tb!451 (= result!451 true)))

(assert (=> b!17919 t!641))

(declare-fun b_and!511 () Bool)

(assert (= b_and!509 (and (=> t!641 result!451) b_and!511)))

(declare-fun b_lambda!8393 () Bool)

(assert (=> (not b_lambda!8393) (not b!17920)))

(declare-fun t!643 () Bool)

(declare-fun tb!453 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!643) tb!453))

(declare-fun result!453 () Bool)

(assert (=> tb!453 (= result!453 true)))

(assert (=> b!17920 t!643))

(declare-fun b_and!513 () Bool)

(assert (= b_and!511 (and (=> t!643 result!453) b_and!513)))

(declare-fun b_lambda!8395 () Bool)

(assert (=> (not b_lambda!8395) (not b!17921)))

(declare-fun t!645 () Bool)

(declare-fun tb!455 () Bool)

(assert (=> (and start!3151 (= P!5 P!5) t!645) tb!455))

(declare-fun result!455 () Bool)

(assert (=> tb!455 (= result!455 true)))

(assert (=> b!17921 t!645))

(declare-fun b_and!515 () Bool)

(assert (= b_and!513 (and (=> t!645 result!455) b_and!515)))

(declare-fun m!28273 () Bool)

(assert (=> b!17921 m!28273))

(assert (=> b!17921 m!28273))

(declare-fun m!28275 () Bool)

(assert (=> b!17921 m!28275))

(declare-fun m!28277 () Bool)

(assert (=> b!17919 m!28277))

(assert (=> b!17919 m!28277))

(declare-fun m!28279 () Bool)

(assert (=> b!17919 m!28279))

(declare-fun m!28281 () Bool)

(assert (=> b!17922 m!28281))

(assert (=> b!17922 m!28281))

(declare-fun m!28283 () Bool)

(assert (=> b!17922 m!28283))

(declare-fun m!28285 () Bool)

(assert (=> b!17917 m!28285))

(assert (=> b!17917 m!28285))

(declare-fun m!28287 () Bool)

(assert (=> b!17917 m!28287))

(declare-fun m!28289 () Bool)

(assert (=> b!17918 m!28289))

(assert (=> b!17918 m!28289))

(declare-fun m!28291 () Bool)

(assert (=> b!17918 m!28291))

(declare-fun m!28293 () Bool)

(assert (=> b!17923 m!28293))

(assert (=> b!17923 m!28293))

(declare-fun m!28295 () Bool)

(assert (=> b!17923 m!28295))

(declare-fun m!28297 () Bool)

(assert (=> start!3151 m!28297))

(declare-fun m!28299 () Bool)

(assert (=> b!17920 m!28299))

(assert (=> b!17920 m!28299))

(declare-fun m!28301 () Bool)

(assert (=> b!17920 m!28301))

(push 1)

(assert (not start!3151))

(assert (not b_lambda!8383))

(assert (not b_lambda!8391))

(assert (not b_lambda!8385))

(assert (not b_lambda!8395))

(assert (not b_lambda!8393))

(assert (not b_next!59))

(assert b_and!515)

(assert (not b_lambda!8389))

(assert (not b_lambda!8387))

(check-sat)

(pop 1)

(push 1)

(assert b_and!515)

(assert (not b_next!59))

(check-sat)

(pop 1)

